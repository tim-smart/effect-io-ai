# last

Creates a sink containing the last value.

To import and use `last` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.last
```

**Signature**

```ts
export declare const last: <In>() => Sink<never, never, In, In, Option.Option<In>>
```
