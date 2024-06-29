# zipWithPrevious

Zips each element with the previous element. Initially accompanied by
`None`.

To import and use `zipWithPrevious` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.zipWithPrevious
```

**Signature**

```ts
export declare const zipWithPrevious: <A, E, R>(self: Stream<A, E, R>) => Stream<[Option.Option<A>, A], E, R>
```
