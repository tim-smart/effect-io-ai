Package: `effect`<br />
Module: `Types`<br />

## Types.unassigned

Branded marker interface representing an unassigned type parameter.

**When to use**

Use when Effect's type-level machinery needs to represent a type parameter
that has not been assigned yet.

**Details**

Used internally by the Effect type system to indicate that a type parameter
has not been assigned a concrete type.

**See**

- `unhandled`

**Signature**

```ts
export interface unassigned {
  readonly _: unique symbol
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Types.ts#L834)

Since v4.0.0