## mapError

Returns a layer with its error channel mapped using the specified function.

**Signature**

```ts
declare const mapError: { <E, E2>(f: (error: E) => E2): <A, R>(self: Layer<A, E, R>) => Layer<A, E2, R>; <A, E, R, E2>(self: Layer<A, E, R>, f: (error: E) => E2): Layer<A, E2, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L424)

Since v2.0.0