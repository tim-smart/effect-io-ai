# suspend

Returns a lazily constructed sink that may require effects for its
creation.

To import and use `suspend` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.suspend
```

**Signature**

```ts
export declare const suspend: <R, E, In, L, Z>(evaluate: LazyArg<Sink<R, E, In, L, Z>>) => Sink<R, E, In, L, Z>
```
