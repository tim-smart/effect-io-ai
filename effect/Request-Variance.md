Package: `effect`<br />
Module: `Request`<br />

## Request.Variance

Variance marker carried by every `Request`.

**Details**

This marker preserves the success, error, and service requirement types for
Effect's type-level machinery. Users normally get it by extending `Request`.

**Signature**

```ts
export interface Variance<out A, out E, out R> {
  readonly [TypeId]: {
    readonly _A: Types.Covariant<A>
    readonly _E: Types.Covariant<E>
    readonly _R: Types.Covariant<R>
  }
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Request.ts#L82)

Since v2.0.0