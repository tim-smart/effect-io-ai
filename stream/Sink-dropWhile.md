# dropWhile

Drops incoming elements as long as the predicate is satisfied.

To import and use `dropWhile` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.dropWhile
```

**Signature**

```ts
export declare const dropWhile: <In>(predicate: Predicate<In>) => Sink<never, never, In, In, unknown>
```
