# acquireUseRelease

Acquire a resource, use it, and then release the resource when the `use`
effect has completed.

To import and use `acquireUseRelease` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.acquireUseRelease
```

**Signature**

```ts
export declare const acquireUseRelease: <Resource, E, R, A, E2, R2, E3, R3>(
  acquire: Micro<Resource, E, R>,
  use: (a: Resource) => Micro<A, E2, R2>,
  release: (a: Resource, result: Result<A, E2>) => Micro<void, E3, R3>
) => Micro<A, E | E2 | E3, R | R2 | R3>
```
