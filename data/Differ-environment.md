# environment

Constructs a differ that knows how to diff `Env` values.

To import and use `environment` from the "Differ" module:

```ts
import * as Differ from '@effect/data/Differ'

// Can be accessed like this
Differ.environment
```

**Signature**

```ts
export declare const environment: <A>() => Differ<Context<A>, Differ.Context.Patch<A, A>>
```
