## extendScope

Extends the scope of this layer, returning a new layer that when provided
to an effect will not immediately release its associated resources when
that effect completes execution but instead when the scope the resulting
effect depends on is closed.

**Signature**

```ts
declare const extendScope: <RIn, E, ROut>(self: Layer<ROut, E, RIn>) => Layer<ROut, E, Scope.Scope | RIn>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L312)

Since v2.0.0