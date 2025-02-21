# getTemplateLiteralCapturingRegExp

Generates a regular expression that captures the pattern defined by the given `TemplateLiteral` AST.

To import and use `getTemplateLiteralCapturingRegExp` from the "SchemaAST" module:

```ts
import * as SchemaAST from "effect/SchemaAST"
// Can be accessed like this
SchemaAST.getTemplateLiteralCapturingRegExp
```

**Signature**

```ts
export declare const getTemplateLiteralCapturingRegExp: (ast: TemplateLiteral) => RegExp
```
