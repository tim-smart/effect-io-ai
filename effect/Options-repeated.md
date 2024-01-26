# repeated

Indicates that the specified command-line option can be repeated `0` or more
times.

**NOTE**: if the command-line option is not provided, and empty array will be
returned as the value for said option.

To import and use `repeated` from the "Options" module:

```ts
import * as Options from "@effect/cli/Options"
// Can be accessed like this
Options.repeated
```

**Signature**

```ts
export declare const repeated: <A>(self: Options<A>) => Options<readonly A[]>
```
