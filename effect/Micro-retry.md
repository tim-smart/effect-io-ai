# retry

Retry the given `Micro` effect using the provided options.

To import and use `retry` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.retry
undefined

**Signature**

```ts
export declare const retry: {
  <A, E>(
    options?:
      | { while?: Predicate<E> | undefined; times?: number | undefined; schedule?: MicroSchedule | undefined }
      | undefined
  ): <R>(self: Micro<A, E, R>) => Micro<A, E, R>
  <A, E, R>(
    self: Micro<A, E, R>,
    options?:
      | { while?: Predicate<E> | undefined; times?: number | undefined; schedule?: MicroSchedule | undefined }
      | undefined
  ): Micro<A, E, R>
}
```
