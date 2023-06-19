# some

Converts an option on values into an option on errors.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const some: <R, E, A>(self: Stream<R, E, Option.Option<A>>) => Stream<R, Option.Option<E>, A>
```
