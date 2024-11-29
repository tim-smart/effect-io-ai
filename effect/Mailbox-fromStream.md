# fromStream

Create a `ReadonlyMailbox` from a `Stream`.

To import and use `fromStream` from the "Mailbox" module:

ts
import \* as Mailbox from "effect/Mailbox"
// Can be accessed like this
Mailbox.fromStream
undefined

**Signature**

```ts
export declare const fromStream: {
  (options?: {
    readonly capacity?: number | undefined
    readonly strategy?: "suspend" | "dropping" | "sliding" | undefined
  }): <A, E, R>(self: Stream<A, E, R>) => Effect<ReadonlyMailbox<A, E>, never, R | Scope>
  <A, E, R>(
    self: Stream<A, E, R>,
    options?: {
      readonly capacity?: number | undefined
      readonly strategy?: "suspend" | "dropping" | "sliding" | undefined
    }
  ): Effect<ReadonlyMailbox<A, E>, never, R | Scope>
}
```
