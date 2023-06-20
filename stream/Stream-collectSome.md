# collectSome

Filters any 'None' values.

To import and use `collectSome` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.collectSome
```

**Signature**

```ts
export declare const collectSome: <R, E, A>(self: Stream<R, E, Option.Option<A>>) => Stream<R, E, A>
```
