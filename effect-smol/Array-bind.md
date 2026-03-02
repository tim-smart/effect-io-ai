Package: `effect`<br />
Module: `Array`<br />

## Array.bind

Introduces a new array variable into a do-notation scope, producing the cartesian product with all previous bindings.

- Each `bind` call adds a named property to the accumulated object.
- The callback receives the current scope and must return an array.
- Equivalent to `flatMap` + merging the new value into the scope object.

**Example** (Binding two arrays)

```ts
import { Array, pipe } from "effect"

const result = pipe(
  Array.Do,
  Array.bind("x", () => [1, 2]),
  Array.bind("y", () => ["a", "b"])
)
console.log(result)
// [{ x: 1, y: "a" }, { x: 1, y: "b" }, { x: 2, y: "a" }, { x: 2, y: "b" }]
```

**See**

- `Do` — start a do-notation pipeline
- `bindTo` — name the first array in a pipeline
- `let` — add a plain computed value

**Signature**

```ts
declare const bind: { <A extends object, N extends string, B>(tag: Exclude<N, keyof A>, f: (a: NoInfer<A>) => ReadonlyArray<B>): (self: ReadonlyArray<A>) => Array<{ [K in N | keyof A]: K extends keyof A ? A[K] : B; }>; <A extends object, N extends string, B>(self: ReadonlyArray<A>, tag: Exclude<N, keyof A>, f: (a: NoInfer<A>) => ReadonlyArray<B>): Array<{ [K in N | keyof A]: K extends keyof A ? A[K] : B; }>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L4141)

Since v3.2.0