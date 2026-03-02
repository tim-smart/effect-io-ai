Package: `effect`<br />
Module: `Option`<br />

## Option.Some

Represents the presence of a value within an `Option`.

**When to use**

- Use as a type guard target when narrowing via `isSome`
- Access the inner value via `.value`

**Behavior**

- `_tag` is always `"Some"`
- `.value` holds the contained value of type `A`
- Yieldable in `Effect.gen` — yields the inner value
- Implements `Pipeable`, `Inspectable`, and structural equality

**See**

- `isSome` to check if an `Option` is `Some`
- `some` to construct a `Some`

**Signature**

```ts
export interface Some<out A> extends Pipeable, Inspectable, Yieldable<Option<A>, A, NoSuchElementError> {
  readonly _tag: "Some"
  readonly _op: "Some"
  readonly value: A
  readonly [TypeId]: {
    readonly _A: Covariant<A>
  }
  [Symbol.iterator](): EffectIterator<Option<A>>
  [Unify.typeSymbol]?: unknown
  [Unify.unifySymbol]?: OptionUnify<this>
  [Unify.ignoreSymbol]?: OptionUnifyIgnore
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L188)

Since v2.0.0