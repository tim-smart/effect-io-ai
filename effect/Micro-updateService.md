# updateService

Update the service for the given `Context.Tag` in the environment.

To import and use `updateService` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.updateService
undefined

**Signature**

```ts
export declare const updateService: {
  <I, A>(tag: Context.Reference<I, A>, f: (value: A) => A): <XA, E, R>(self: Micro<XA, E, R>) => Micro<XA, E, R>
  <I, A>(tag: Context.Tag<I, A>, f: (value: A) => A): <XA, E, R>(self: Micro<XA, E, R>) => Micro<XA, E, R | I>
  <XA, E, R, I, A>(self: Micro<XA, E, R>, tag: Context.Reference<I, A>, f: (value: A) => A): Micro<XA, E, R>
  <XA, E, R, I, A>(self: Micro<XA, E, R>, tag: Context.Tag<I, A>, f: (value: A) => A): Micro<XA, E, R | I>
}
```
