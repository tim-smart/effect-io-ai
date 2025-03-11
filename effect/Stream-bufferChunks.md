## bufferChunks

Allows a faster producer to progress independently of a slower consumer by
buffering up to `capacity` chunks in a queue.

**Signature**

```ts
declare const bufferChunks: { (options: { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; }): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R>(self: Stream<A, E, R>, options: { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; }): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L749)

Since v2.0.0