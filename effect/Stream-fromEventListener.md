# fromEventListener

Creates a `Stream` using addEventListener.

To import and use `fromEventListener` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.fromEventListener
```

**Signature**

```ts
export declare const fromEventListener: <A = Event>(
  target: EventTarget,
  type: string,
  options?: boolean | Omit<AddEventListenerOptions, "signal">
) => Stream<A, never, never>
```
