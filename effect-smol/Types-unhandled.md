Package: `effect`<br />
Module: `Types`<br />

## Types.unhandled

Branded marker interface representing an unhandled error type.

Used internally by the Effect type system to indicate that an error type
has not been handled.

**See**

- `unassigned`

**Signature**

```ts
export interface unhandled {
  readonly _: unique symbol
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L789)

Since v4.0.0