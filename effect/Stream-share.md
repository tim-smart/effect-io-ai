# share

Returns a new Stream that multicasts the original Stream, subscribing to it as soon as the first consumer subscribes.
As long as there is at least one consumer, the upstream will continue running and emitting data.
When all consumers have exited, the upstream will be finalized.

To import and use `share` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.share
```

**Signature**

```ts
export declare const share: {
  <A, E>(
    config:
      | {
          readonly capacity: "unbounded"
          readonly replay?: number | undefined
          readonly idleTimeToLive?: Duration.DurationInput | undefined
        }
      | {
          readonly capacity: number
          readonly strategy?: "sliding" | "dropping" | "suspend" | undefined
          readonly replay?: number | undefined
          readonly idleTimeToLive?: Duration.DurationInput | undefined
        }
  ): <R>(self: Stream<A, E, R>) => Effect.Effect<Stream<A, E>, never, R | Scope.Scope>
  <A, E, R>(
    self: Stream<A, E, R>,
    config:
      | {
          readonly capacity: "unbounded"
          readonly replay?: number | undefined
          readonly idleTimeToLive?: Duration.DurationInput | undefined
        }
      | {
          readonly capacity: number
          readonly strategy?: "sliding" | "dropping" | "suspend" | undefined
          readonly replay?: number | undefined
          readonly idleTimeToLive?: Duration.DurationInput | undefined
        }
  ): Effect.Effect<Stream<A, E>, never, R | Scope.Scope>
}
```
