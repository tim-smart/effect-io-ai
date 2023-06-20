# tagged

Provides a tagged constructor for the specified `Case`.

To import and use `tagged` from the "Data" module:

```ts
import * as Data from '@effect/data/Data'

// Can be accessed like this
Data.tagged
```

**Signature**

```ts
export declare const tagged: <A extends Case & { _tag: string }>(tag: A['_tag']) => Case.Constructor<A, '_tag'>
```
