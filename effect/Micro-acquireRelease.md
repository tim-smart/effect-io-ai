# acquireRelease

Create a resource with a cleanup `Micro` effect, ensuring the cleanup is
executed when the `MicroScope` is closed.

To import and use `acquireRelease` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.acquireRelease
```

**Signature**

```ts
export declare const acquireRelease: <A, E, R>(
  acquire: Micro<A, E, R>,
  release: (a: A, exit: MicroExit<unknown, unknown>) => Micro<void>
) => Micro<A, E, R | MicroScope>
```
