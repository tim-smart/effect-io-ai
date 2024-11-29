# repeatExit

Repeat the given `Micro` using the provided options.

The `while` predicate will be checked after each iteration, and can use the
fall `MicroExit` of the effect to determine if the repetition should continue.

To import and use `repeatExit` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.repeatExit
undefined

**Signature**

```ts
export declare const repeatExit: {
  <A, E>(options: {
    while: Predicate<MicroExit<A, E>>
    times?: number | undefined
    schedule?: MicroSchedule | undefined
  }): <R>(self: Micro<A, E, R>) => Micro<A, E, R>
  <A, E, R>(
    self: Micro<A, E, R>,
    options: { while: Predicate<MicroExit<A, E>>; times?: number | undefined; schedule?: MicroSchedule | undefined }
  ): Micro<A, E, R>
}
```
