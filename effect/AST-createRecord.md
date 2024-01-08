# createRecord

Create a record with the specified key type and value type.

To import and use `createRecord` from the "AST" module:

```ts
import * as AST from "@effect/schema/AST"
// Can be accessed like this
AST.createRecord
```

**Signature**

```ts
export declare const createRecord: (key: AST, value: AST, isReadonly: boolean) => TypeLiteral
```
