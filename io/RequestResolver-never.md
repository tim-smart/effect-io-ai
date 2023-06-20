# never

A data source that never executes requests.

To import and use `never` from the "RequestResolver" module:

```ts
import * as RequestResolver from '@effect/io/RequestResolver'

// Can be accessed like this
RequestResolver.never
```

**Signature**

```ts
export declare const never: (_: void) => RequestResolver<never, never>
```
