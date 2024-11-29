# some

Converts an option on values into an option on errors.

To import and use `some` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.some
undefined

**Signature**

```ts
export declare const some: <A, E, R>(self: Stream<Option.Option<A>, E, R>) => Stream<A, Option.Option<E>, R>
```
