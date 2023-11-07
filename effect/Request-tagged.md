# tagged

Constructs a new `Request`.

To import and use `tagged` from the "Request" module:

```ts
import * as Request from 'effect/Request'

// Can be accessed like this
Request.tagged
```

**Signature**

```ts
export declare const tagged: <R extends Request<any, any> & { _tag: string }>(
  tag: R['_tag']
) => Request.Constructor<R, '_tag'>
```
