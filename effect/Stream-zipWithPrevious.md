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
export declare const zipWithPrevious: <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, [Option.Option<A>, A]>
```
