# some

Converts an option on values into an option on errors.

To import and use `some` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.some
```

**Signature**

```ts
export declare const some: <R, E, A>(self: Stream<R, E, Option.Option<A>>) => Stream<R, Option.Option<E>, A>
```
