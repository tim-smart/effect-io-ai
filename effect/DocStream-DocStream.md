# DocStream

Represents a document that has been laid out and can be processed used by the
rendering algorithms.

A simplified view is that a `Doc` is equivalent to an array of `DocStream`,
and the layout algorithms simply pick a `DocStream` based upon which instance
best fits the layout constraints. Therefore, a `DocStream` has all complexity
contained in a `Doc` resolved, making it very easy to convert to other
formats, such as plaintext or terminal output.

To import and use `DocStream` from the "DocStream" module:

```ts
import * as DocStream from "@effect/printer/DocStream"
// Can be accessed like this
DocStream.DocStream
```
