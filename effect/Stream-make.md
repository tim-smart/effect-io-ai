# make

Creates a stream from an sequence of values.

To import and use `make` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.make
```

**Signature**

```ts
export declare const make: <As extends any[]>(...as: As) => Stream<As[number], never, never>
```
