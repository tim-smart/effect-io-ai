# repeat

Repeat the given `Micro` effect using the provided options. Only successful
results will be repeated.

To import and use `repeat` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.repeat
undefined

**Signature**

```ts
export declare const repeat: {
  <A, E>(
    options?:
      | { while?: Predicate<A> | undefined; times?: number | undefined; schedule?: MicroSchedule | undefined }
      | undefined
  ): <R>(self: Micro<A, E, R>) => Micro<A, E, R>
  <A, E, R>(
    self: Micro<A, E, R>,
    options?:
      | { while?: Predicate<A> | undefined; times?: number | undefined; schedule?: MicroSchedule | undefined }
      | undefined
  ): Micro<A, E, R>
}
```
