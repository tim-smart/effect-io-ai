# serviceOption

Access the given `Context.Tag` from the environment, without tracking the
dependency at the type level.

It will return an `Option` of the service, depending on whether it is
available in the environment or not.

To import and use `serviceOption` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.serviceOption
```

**Signature**

```ts
export declare const serviceOption: <I, S>(tag: Context.Tag<I, S>) => Micro<Option.Option<S>, never, never>
```
