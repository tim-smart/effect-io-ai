# fromHub

Create a sink which publishes each element to the specified hub.

To import and use `fromHub` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.fromHub
```

**Signature**

```ts
export declare const fromHub: <In>(
  hub: Hub.Hub<In>,
  options?: { readonly shutdown?: boolean }
) => Sink<never, never, In, never, void>
```
