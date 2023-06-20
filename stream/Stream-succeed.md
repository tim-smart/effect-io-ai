# succeed

Creates a single-valued pure stream.

To import and use `succeed` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.succeed
```

**Signature**

```ts
export declare const succeed: <A>(value: A) => Stream<never, never, A>
```
