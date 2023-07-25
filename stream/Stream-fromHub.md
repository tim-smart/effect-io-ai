# fromHub

Creates a stream from a subscription to a `Hub`.

To import and use `fromHub` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.fromHub
```

**Signature**

```ts
export declare const fromHub: {
  <A>(
    hub: Hub.Hub<A>,
    options: { readonly scoped: true; readonly maxChunkSize?: number; readonly shutdown?: boolean }
  ): Effect.Effect<Scope.Scope, never, Stream<never, never, A>>
  <A>(
    hub: Hub.Hub<A>,
    options?: { readonly scoped?: false; readonly maxChunkSize?: number; readonly shutdown?: boolean }
  ): Stream<never, never, A>
}
```
