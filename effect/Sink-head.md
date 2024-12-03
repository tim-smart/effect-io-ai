# head

Creates a sink containing the first value.

To import and use `head` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.head
```

**Signature**

```ts
export declare const head: <In>() => Sink<Option.Option<In>, In, In>
```
