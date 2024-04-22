# smalltalk-playground

Delving into GNU Smalltalk using Emacs, inspired by Kent Beck's Smalltalk best practice patterns

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-refresh-toc -->
**Table of Contents**

- [Getting Started](#getting-started)
- [Contributing](#contributing)
- [License](#license)

<!-- markdown-toc end -->

## Getting Started

1. Clone the repository:

```bash
git clone git@github.com:kisp/smalltalk-playground.git
```

2. Navigate into the repository:

```bash
cd smalltalk-playground
```

3. Resolve DNS Resolution Issue (if applicable):

   Due to a known issue with DNS resolution within the Docker container when using Docker Compose, we need to bind the `resolv.conf` file into the container. Follow these steps:

   a. Copy the example `resolv.conf` file:

   ```bash
   cp resolv.conf.example resolv.conf
   ```

   b. Edit the `resolv.conf` file to provide suitable nameservers. Alternatively, if network access is not required for running Emacs and GNU Smalltalk, you can leave it as is.

4. Launch Emacs and Open `hello.st`:

```bash
make open-hello.st
```

5. Using Emacs:

   - Type `C-c m` to start the Smalltalk interpreter.
   - Type `C-c f` to "filein" the `hello.st` buffer and run it in the interpreter.

## Contributing

Feel free to contribute to this project by submitting pull requests or raising issues.

## License

This project is licensed under the [MIT License](LICENSE).
