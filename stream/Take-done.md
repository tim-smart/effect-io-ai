# done

Transforms a `Take<E, A>` to an `Effect<never, E, A>`.

To import and use `done` from the "Take" module:

```ts
import * as Take from '@effect/stream/Take'

// Can be accessed like this
Take.done
```

**Signature**

```ts
export declare const done: <E, A>(self: Take<E, A>) => Effect.Effect<never, Option.Option<E>, Chunk.Chunk<A>>
```
