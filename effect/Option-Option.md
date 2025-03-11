## Option

The `Option` data type represents optional values. An `Option<A>` can either
be `Some<A>`, containing a value of type `A`, or `None`, representing the
absence of a value.

**When to Use**

You can use `Option` in scenarios like:

- Using it for initial values
- Returning values from functions that are not defined for all possible
  inputs (referred to as “partial functions”)
- Managing optional fields in data structures
- Handling optional function arguments

**Signature**

```ts
type Option<A> = None<A> | Some<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L40)

Since v2.0.0