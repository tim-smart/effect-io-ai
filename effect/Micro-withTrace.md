# withTrace

Add a stack trace to any failures that occur in the effect. The trace will be
added to the `traces` field of the `MicroCause` object.

To import and use `withTrace` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.withTrace
```

**Signature**

```ts
export declare const withTrace: {
  (name: string): <A, E, R>(self: Micro<A, E, R>) => Micro<A, E, R>
  <A, E, R>(self: Micro<A, E, R>, name: string): Micro<A, E, R>
}
```
