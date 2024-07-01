# exit

Access the `MicroExit` of the given `Micro` effect.

To import and use `exit` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.exit
```

**Signature**

```ts
export declare const exit: <A, E, R>(self: Micro<A, E, R>) => Micro<MicroExit<A, E>, never, R>
```
