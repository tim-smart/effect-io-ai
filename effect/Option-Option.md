Package: `effect`<br />
Module: `Option`<br />

## Option.Option

The `Option` data type represents optional values. An `Option<A>` is either
`Some<A>`, containing a value of type `A`, or `None`, representing absence.

**When to use**

Use to represent initial values that may not yet exist
- Returning from partial functions (not defined for all inputs)
- Managing optional fields in data structures

**See**

- `some` for creating a `Some`
- `none` for creating a `None`
- `match` for pattern matching

**Signature**

```ts
type Option<A> = None<A> | Some<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L54)

Since v2.0.0