# done

Transforms a `Take<A, E>` to an `Effect<A, E>`.

To import and use `done` from the "Take" module:

```ts
import * as Take from "effect/Take"
// Can be accessed like this
Take.done
```

**Signature**

```ts
export declare const done: <A, E>(self: Take<A, E>) => Effect.Effect<Chunk.Chunk<A>, Option.Option<E>>
```
