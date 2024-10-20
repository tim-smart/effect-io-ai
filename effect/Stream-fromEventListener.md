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
export declare const fromEventListener: <A = unknown>(
  target: EventListener<A>,
  type: string,
  options?:
    | boolean
    | {
        readonly capture?: boolean
        readonly passive?: boolean
        readonly once?: boolean
        readonly bufferSize?: number | "unbounded" | undefined
      }
    | undefined
) => Stream<A>
```
