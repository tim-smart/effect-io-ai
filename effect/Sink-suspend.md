# suspend

Returns a lazily constructed sink that may require effects for its
creation.

To import and use `suspend` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.suspend
undefined

**Signature**

```ts
export declare const suspend: <A, In, L, E, R>(evaluate: LazyArg<Sink<A, In, L, E, R>>) => Sink<A, In, L, E, R>
```
