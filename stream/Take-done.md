# done

Transforms a `Take<E, A>` to an `Effect<never, E, A>`.

Part of the `Take` module, imported from `@effect/stream/Take`.

**Signature**

```ts
export declare const done: <E, A>(self: Take<E, A>) => Effect.Effect<never, Option.Option<E>, Chunk.Chunk<A>>
```
