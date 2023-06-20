# collectSuccess

Filters any `Exit.Failure` values.

To import and use `collectSuccess` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.collectSuccess
```

**Signature**

```ts
export declare const collectSuccess: <R, E, E2, A>(self: Stream<R, E, Exit.Exit<E2, A>>) => Stream<R, E, A>
```
