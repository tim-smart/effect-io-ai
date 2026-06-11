Package: `effect`<br />
Module: `Context`<br />

## Context.Key

Typed identifier for a service stored in a `Context`.

**When to use**

Use as the typed handle for storing, retrieving, and requiring a specific
service in a `Context`.

**Details**

`Identifier` tracks the requirement in Effect types, while `Shape` is the
service implementation retrieved by the key. A key is also an Effect value,
so yielding it inside `Effect.gen` retrieves the service from the current
fiber context.

**See**

- `Service` for creating required service keys
- `Reference` for creating service keys with default values

**Signature**

```ts
export interface Key<out Identifier, out Shape> extends Effect<Shape, never, Identifier> {
  readonly [ServiceTypeId]: ServiceTypeId
  readonly Service: Shape
  readonly Identifier: Identifier
  readonly key: string
  readonly stack?: string | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L65)

Since v4.0.0