## done

Transforms a `Take<A, E>` to an `Effect<A, E>`.

**Signature**

```ts
declare const done: <A, E>(self: Take<A, E>) => Effect.Effect<Chunk.Chunk<A>, Option.Option<E>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Take.ts#L84)

Since v2.0.0