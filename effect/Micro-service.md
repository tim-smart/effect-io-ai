# service

Access the given `Context.Tag` from the environment.

To import and use `service` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.service
```

**Signature**

```ts
export declare const service: {
  <I, S>(tag: Context.Reference<I, S>): Micro<S>
  <I, S>(tag: Context.Tag<I, S>): Micro<S, never, I>
}
```
