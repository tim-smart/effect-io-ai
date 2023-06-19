# zipWithPrevious

Zips each element with the previous element. Initially accompanied by
`None`.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const zipWithPrevious: <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, readonly [Option.Option<A>, A]>
```
