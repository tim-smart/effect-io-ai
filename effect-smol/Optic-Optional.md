Package: `effect`<br />
Module: `Optic`<br />

## Optic.Optional

The most general optic — both reading and writing can fail.

When to use:
- The focus may not exist in `S` **and** writing a new `A` back may also
  fail (e.g. the source no longer matches the expected shape).
- As the base type: every optic (`Iso`, `Lens`, `Prism`,
  `Traversal`) extends `Optional`.

Behavior:
- `getResult(s)` returns `Result.Success<A>` or `Result.Failure<string>`.
- `replaceResult(a, s)` returns `Result.Success<S>` or
  `Result.Failure<string>`.
- `replace(a, s)` returns the original `s` on failure (never throws).
- `modify(f)` returns the original `s` on failure (never throws).
- All operations are pure; inputs are never mutated.

**Example** (record key that may be absent)

```ts
import { Optic, Result } from "effect"

type Env = { [key: string]: string }
const _home = Optic.id<Env>().at("HOME")

console.log(Result.isSuccess(_home.getResult({ HOME: "/root" })))
// Output: true

console.log(Result.isFailure(_home.getResult({ PATH: "/bin" })))
// Output: true

// replace returns original on failure
console.log(_home.replace("/new", { PATH: "/bin" }))
// Output: { PATH: "/bin" }
```

**See**

- `makeOptional` — constructor
- `Lens` — when reading always succeeds
- `Prism` — when writing always succeeds

**Signature**

```ts
export interface Optional<in out S, in out A> {
  readonly node: Node
  /**
   * Attempts to read the focus `A` from the whole `S`.
   *
   * Returns `Result.Success<A>` when the focus exists, or
   * `Result.Failure<string>` with a descriptive error otherwise.
   */
  readonly getResult: (s: S) => Result.Result<A, string>
  /**
   * Replaces the focus in `S` with a new `A`. Returns the original `s`
   * unchanged when the optic cannot focus (never throws).
   */
  readonly replace: (a: A, s: S) => S
  /**
   * Like {@link replace}, but returns an explicit `Result` so callers can
   * detect and handle failure.
   */
  readonly replaceResult: (a: A, s: S) => Result.Result<S, string>
  /**
   * Composes this optic with another. The result type is the weakest of
   * the two: Iso + Iso = Iso, Lens + Prism = Optional, etc.
   *
   * **Example** (composing a lens with a prism)
   *
   * ```ts
   * import { Optic, Option } from "effect"
   *
   * type State = { value: Option.Option<number> }
   *
   * const _inner = Optic.id<State>().key("value").compose(Optic.some())
   * // _inner is Optional<State, number>
   * ```
   *
   * @see {@link id} — start a composition chain
   */
  compose<B>(this: Iso<S, A>, that: Iso<A, B>): Iso<S, B>
  compose<B>(this: Lens<S, A>, that: Lens<A, B>): Lens<S, B>
  compose<B>(this: Prism<S, A>, that: Prism<A, B>): Prism<S, B>
  compose<B>(this: Optional<S, A>, that: Optional<A, B>): Optional<S, B>

  /**
   * Returns a function `(s: S) => S` that applies `f` to the focused value.
   * If the optic cannot focus, the original `s` is returned unchanged.
   *
   * **Example** (incrementing a nested field)
   *
   * ```ts
   * import { Optic } from "effect"
   *
   * type S = { readonly a: { readonly b: number } }
   * const _b = Optic.id<S>().key("a").key("b")
   *
   * const inc = _b.modify((n) => n + 1)
   * console.log(inc({ a: { b: 1 } }))
   * // Output: { a: { b: 2 } }
   * ```
   */
  modify(f: (a: A) => A): (s: S) => S

  /**
   * Focuses on a property of the current struct/tuple focus.
   *
   * - On a {@link Lens}, returns a Lens.
   * - On an {@link Optional}, returns an Optional.
   * - Does **not** work on union types (compile error).
   *
   * **Example** (drilling into nested structs)
   *
   * ```ts
   * import { Optic } from "effect"
   *
   * type S = { readonly a: { readonly b: number } }
   * const _b = Optic.id<S>().key("a").key("b")
   *
   * console.log(_b.get({ a: { b: 42 } }))
   * // Output: 42
   * ```
   */
  key<S, A extends object, Key extends keyof A>(
    this: Lens<S, A>,
    key: Key,
    ..._err: ForbidUnion<A, "cannot use `key` on a union type">
  ): Lens<S, A[Key]>
  key<S, A extends object, Key extends keyof A>(
    this: Optional<S, A>,
    key: Key,
    ..._err: ForbidUnion<A, "cannot use `key` on a union type">
  ): Optional<S, A[Key]>

  /**
   * Focuses on a key where setting `undefined` **removes** the key from the
   * struct (or splices the element from an array/tuple).
   *
   * - The focus type becomes `A[Key] | undefined`.
   * - Does **not** work on union types (compile error).
   *
   * **Example** (deleting an optional key)
   *
   * ```ts
   * import { Optic } from "effect"
   *
   * type S = { readonly a?: number }
   * const _a = Optic.id<S>().optionalKey("a")
   *
   * console.log(_a.replace(undefined, { a: 1 }))
   * // Output: {}
   *
   * console.log(_a.replace(2, {}))
   * // Output: { a: 2 }
   * ```
   */
  optionalKey<S, A extends object, Key extends keyof A>(
    this: Lens<S, A>,
    key: Key,
    ..._err: ForbidUnion<A, "cannot use `optionalKey` on a union type">
  ): Lens<S, A[Key] | undefined>
  optionalKey<S, A extends object, Key extends keyof A>(
    this: Optional<S, A>,
    key: Key,
    ..._err: ForbidUnion<A, "cannot use `optionalKey` on a union type">
  ): Optional<S, A[Key] | undefined>

  /**
   * Adds one or more `Schema` validation checks to the optic chain.
   * `getResult` fails when any check fails; `set` passes through unchanged.
   *
   * - On a {@link Prism}, returns a Prism.
   * - On an {@link Optional}, returns an Optional.
   *
   * **Example** (only focus positive numbers)
   *
   * ```ts
   * import { Optic, Result, Schema } from "effect"
   *
   * const _pos = Optic.id<number>().check(Schema.isGreaterThan(0))
   *
   * console.log(Result.isSuccess(_pos.getResult(5)))
   * // Output: true
   *
   * console.log(Result.isFailure(_pos.getResult(-1)))
   * // Output: true
   * ```
   *
   * @see {@link fromChecks} — standalone prism from checks
   */
  check<S, A>(this: Prism<S, A>, ...checks: readonly [AST.Check<A>, ...Array<AST.Check<A>>]): Prism<S, A>
  check<S, A>(this: Optional<S, A>, ...checks: readonly [AST.Check<A>, ...Array<AST.Check<A>>]): Optional<S, A>

  /**
   * Narrows the focus to a subtype `B` using a type guard.
   *
   * - On a {@link Prism}, returns a Prism.
   * - On an {@link Optional}, returns an Optional.
   * - Pass optional `annotations` to customize the error message.
   *
   * **Example** (narrowing a union)
   *
   * ```ts
   * import { Optic, Result } from "effect"
   *
   * type B = { readonly _tag: "b"; readonly b: number }
   * type S = { readonly _tag: "a"; readonly a: string } | B
   *
   * const _b = Optic.id<S>().refine(
   *   (s: S): s is B => s._tag === "b",
   *   { expected: `"b" tag` }
   * )
   *
   * console.log(Result.isSuccess(_b.getResult({ _tag: "b", b: 1 })))
   * // Output: true
   * ```
   *
   * @see `.tag()` — shorthand for narrowing by `_tag`
   */
  refine<S, A, B extends A>(
    this: Prism<S, A>,
    refinement: (a: A) => a is B,
    annotations?: Schema.Annotations.Filter
  ): Prism<S, B>
  refine<S, A, B extends A>(
    this: Optional<S, A>,
    refinement: (a: A) => a is B,
    annotations?: Schema.Annotations.Filter
  ): Optional<S, B>

  /**
   * Narrows the focus to the variant of a tagged union with the given
   * `_tag` value.
   *
   * - On a {@link Prism}, returns a Prism.
   * - On an {@link Optional}, returns an Optional.
   * - Shorthand for `.refine(s => s._tag === tag)`.
   *
   * **Example** (focusing a tagged variant)
   *
   * ```ts
   * import { Optic, Result } from "effect"
   *
   * type Shape =
   *   | { readonly _tag: "Circle"; readonly radius: number }
   *   | { readonly _tag: "Rect"; readonly width: number }
   *
   * const _radius = Optic.id<Shape>().tag("Circle").key("radius")
   *
   * console.log(Result.isSuccess(_radius.getResult({ _tag: "Circle", radius: 5 })))
   * // Output: true
   *
   * console.log(Result.isFailure(_radius.getResult({ _tag: "Rect", width: 10 })))
   * // Output: true
   * ```
   *
   * @see `.refine()` — for arbitrary type guards
   */
  tag<S, A extends { readonly _tag: AST.LiteralValue }, Tag extends A["_tag"]>(
    this: Prism<S, A>,
    tag: Tag
  ): Prism<S, Extract<A, { readonly _tag: Tag }>>
  tag<S, A extends { readonly _tag: AST.LiteralValue }, Tag extends A["_tag"]>(
    this: Optional<S, A>,
    tag: Tag
  ): Optional<S, Extract<A, { readonly _tag: Tag }>>

  /**
   * Focuses on a key only if it exists (`Object.hasOwn`). Both
   * `getResult` and `replaceResult` fail when the key is absent.
   *
   * Unlike `.key()`, which always succeeds on the read side, `.at()` is
   * useful for Records or arrays where the key/index may not be present.
   *
   * - Always returns an {@link Optional}.
   * - Does **not** work on union types (compile error).
   *
   * **Example** (safe record access)
   *
   * ```ts
   * import { Optic, Result } from "effect"
   *
   * type Env = { [key: string]: number }
   * const _x = Optic.id<Env>().at("x")
   *
   * console.log(Result.isSuccess(_x.getResult({ x: 1 })))
   * // Output: true
   *
   * console.log(Result.isFailure(_x.getResult({ y: 2 })))
   * // Output: true
   * ```
   *
   * @see `.key()` — when the key is always present
   */
  at<S, A extends object, Key extends keyof A>(
    this: Optional<S, A>,
    key: Key,
    ..._err: ForbidUnion<A, "cannot use `at` on a union type">
  ): Optional<S, A[Key]>

  /**
   * Focuses on a subset of keys of the current struct focus.
   *
   * - On a {@link Lens}, returns a Lens.
   * - On an {@link Optional}, returns an Optional.
   * - Does **not** work on union types (compile error).
   *
   * **Example** (picking keys)
   *
   * ```ts
   * import { Optic } from "effect"
   *
   * type S = { readonly a: string; readonly b: number; readonly c: boolean }
   *
   * const _ac = Optic.id<S>().pick(["a", "c"])
   *
   * console.log(_ac.get({ a: "hi", b: 1, c: true }))
   * // Output: { a: "hi", c: true }
   * ```
   *
   * @see `.omit()` — the inverse operation
   */
  pick<S, A, Keys extends ReadonlyArray<keyof A>>(
    this: Lens<S, A>,
    keys: Keys,
    ..._err: ForbidUnion<A, "cannot use `pick` on a union type">
  ): Lens<S, Pick<A, Keys[number]>>
  pick<S, A, Keys extends ReadonlyArray<keyof A>>(
    this: Optional<S, A>,
    keys: Keys,
    ..._err: ForbidUnion<A, "cannot use `pick` on a union type">
  ): Optional<S, Pick<A, Keys[number]>>

  /**
   * Focuses on all keys **except** the specified ones.
   *
   * - On a {@link Lens}, returns a Lens.
   * - On an {@link Optional}, returns an Optional.
   * - Does **not** work on union types (compile error).
   *
   * **Example** (omitting keys)
   *
   * ```ts
   * import { Optic } from "effect"
   *
   * type S = { readonly a: string; readonly b: number; readonly c: boolean }
   *
   * const _ac = Optic.id<S>().omit(["b"])
   *
   * console.log(_ac.get({ a: "hi", b: 1, c: true }))
   * // Output: { a: "hi", c: true }
   * ```
   *
   * @see `.pick()` — the inverse operation
   *
   * @since 1.0.0
   */
  omit<S, A, Keys extends ReadonlyArray<keyof A>>(
    this: Lens<S, A>,
    keys: Keys,
    ..._err: ForbidUnion<A, "cannot use `omit` on a union type">
  ): Lens<S, Omit<A, Keys[number]>>
  omit<S, A, Keys extends ReadonlyArray<keyof A>>(
    this: Optional<S, A>,
    keys: Keys,
    ..._err: ForbidUnion<A, "cannot use `omit` on a union type">
  ): Optional<S, Omit<A, Keys[number]>>

  /**
   * Filters out `undefined` from the focus, producing a {@link Prism}.
   *
   * `getResult` fails when the focus is `undefined`.
   *
   * **Example** (filtering undefined)
   *
   * ```ts
   * import { Optic, Result } from "effect"
   *
   * const _defined = Optic.id<number | undefined>().notUndefined()
   *
   * console.log(Result.isSuccess(_defined.getResult(42)))
   * // Output: true
   *
   * console.log(Result.isFailure(_defined.getResult(undefined)))
   * // Output: true
   * ```
   *
   * @since 4.0.0
   */
  notUndefined(): Prism<S, Exclude<A, undefined>>
  notUndefined(): Optional<S, Exclude<A, undefined>>

  /**
   * Focuses **all elements** of an array-like focus and optionally narrows
   * to a subset using an element-level optic.
   *
   * Available only on {@link Traversal} (i.e. when `A` is
   * `ReadonlyArray<Element>`). Returns a new Traversal focused on the
   * selected elements.
   *
   * Behavior:
   * - **getResult** collects the values focused by `f(id<A>())` for each
   *   element. Non-focusable elements are skipped.
   * - **replaceResult** expects exactly as many values as were collected by
   *   `getResult` and writes them back in order. Fails with a
   *   length-mismatch error if counts differ.
   *
   * **Example** (incrementing liked posts)
   *
   * ```ts
   * import { Optic, Schema } from "effect"
   *
   * type Post = { title: string; likes: number }
   * type S = { user: { posts: ReadonlyArray<Post> } }
   *
   * const _likes = Optic.id<S>()
   *   .key("user")
   *   .key("posts")
   *   .forEach((post) => post.key("likes").check(Schema.isGreaterThan(0)))
   *
   * const addLike = _likes.modifyAll((n) => n + 1)
   *
   * console.log(
   *   addLike({
   *     user: { posts: [{ title: "a", likes: 0 }, { title: "b", likes: 1 }] }
   *   })
   * )
   * // Output: { user: { posts: [{ title: "a", likes: 0 }, { title: "b", likes: 2 }] } }
   * ```
   *
   * @see {@link getAll} — extract all focused elements as an array
   * @see `.modifyAll()` — apply a function to every focused element
   */
  forEach<S, A, B>(this: Traversal<S, A>, f: (iso: Iso<A, A>) => Optional<A, B>): Traversal<S, B>

  /**
   * Applies a function to **every** element focused by the traversal.
   *
   * Available only on {@link Traversal}. Returns a function `(s: S) => S`.
   * If the traversal cannot focus, the original `s` is returned unchanged.
   *
   * Unlike `.modify()`, which operates on the whole array, `modifyAll`
   * maps `f` over each individual element.
   *
   * **Example** (doubling all focused values)
   *
   * ```ts
   * import { Optic, Schema } from "effect"
   *
   * type S = { readonly items: ReadonlyArray<number> }
   *
   * const _positive = Optic.id<S>()
   *   .key("items")
   *   .forEach((n) => n.check(Schema.isGreaterThan(0)))
   *
   * const doubled = _positive.modifyAll((n) => n * 2)
   *
   * console.log(doubled({ items: [1, -2, 3] }))
   * // Output: { items: [2, -2, 6] }
   * ```
   *
   * @see `.forEach()` — create a sub-traversal
   * @see {@link getAll} — extract focused elements
   */
  modifyAll<S, A>(this: Traversal<S, A>, f: (a: A) => A): (s: S) => S
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Optic.ts#L574)

Since v4.0.0