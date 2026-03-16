Package: `effect`<br />
Module: `Option`<br />

## Option.None

Represents the absence of a value within an `Option`.

**When to use**

- Use as a type guard target when narrowing via `isNone`

**Behavior**

- `_tag` is always `"None"`
- Yieldable in `Effect.gen` — yields `NoSuchElementError`
- Implements `Pipeable`, `Inspectable`, and structural equality

**See**

- `isNone` to check if an `Option` is `None`
- `none` to construct a `None`

**Signature**

```ts
export interface None<out A> extends Pipeable, Inspectable, Yieldable<Option<A>, A, NoSuchElementError> {
  readonly _tag: "None"
  readonly _op: "None"
  readonly valueOrUndefined: undefined
  readonly [TypeId]: {
    readonly _A: Covariant<A>
  }
  [Unify.typeSymbol]?: unknown
  [Unify.unifySymbol]?: OptionUnify<this>
  [Unify.ignoreSymbol]?: OptionUnifyIgnore
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L156)

Since v2.0.0