# succeed

A sink that immediately ends with the specified value.

To import and use `succeed` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.succeed
undefined

**Signature**

```ts
export declare const succeed: <A>(a: A) => Sink<A, unknown>
```
