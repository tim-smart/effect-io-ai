# suspend

Returns a lazily constructed stream.

To import and use `suspend` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.suspend
```

**Signature**

```ts
export declare const suspend: <R, E, A>(stream: LazyArg<Stream<R, E, A>>) => Stream<R, E, A>
```
