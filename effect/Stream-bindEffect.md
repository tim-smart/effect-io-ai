# bindEffect

Binds an effectful value in a `do` scope

To import and use `bindEffect` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.bindEffect
```

**Signature**

```ts
export declare const bindEffect: {
  <N extends string, A, B, E2, R2>(
    tag: Exclude<N, keyof A>,
    f: (_: NoInfer<A>) => Effect.Effect<B, E2, R2>,
    options?: { readonly concurrency?: number | "unbounded" | undefined; readonly bufferSize?: number | undefined }
  ): <E, R>(self: Stream<A, E, R>) => Stream<{ [K in keyof A | N]: K extends keyof A ? A[K] : B }, E | E2, R | R2>
  <A, E, R, N extends string, B, E2, R2>(
    self: Stream<A, E, R>,
    tag: Exclude<N, keyof A>,
    f: (_: NoInfer<A>) => Effect.Effect<B, E2, R2>,
    options?: { readonly concurrency?: number | "unbounded" | undefined; readonly unordered?: boolean | undefined }
  ): Stream<{ [K in keyof A | N]: K extends keyof A ? A[K] : B }, E | E2, R | R2>
}
```
