## asyncEffect

Creates a stream from an asynchronous callback that can be called multiple
times The registration of the callback itself returns an effect. The
optionality of the error type `E` can be used to signal the end of the
stream, by setting it to `None`.

**Signature**

```ts
declare const asyncEffect: <A, E = never, R = never>(register: (emit: Emit.Emit<R, E, A, void>) => Effect.Effect<unknown, E, R>, bufferSize?: number | "unbounded" | { readonly bufferSize?: number | undefined; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; } | undefined) => Stream<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L372)

Since v2.0.0