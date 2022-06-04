# 🌍 GMT for Geodesy Short Course

## Welcome to the GMT for Geodesy short course

This Jupyter book 📖 contains [GMT](https://www.generic-mapping-tools.org) tutorials
for processing and mapping various data types relevant to geodesy.

````{panels}
:column: col-3 align-items-center p-2
:body: text-center

:img-top: _images/first-figure_31_0.png
```{link-button} first-figure
:text: Anatomy of a GMT Figure 🌍
:type: ref
```
by [Max Jones](https://orcid.org/0000-0003-0180-8928)

````

# 🌠 Quickstart

To run these notebooks in an interactive Jupyter session online,
🖱️ click on the button below to launch on regular
[Binder](https://mybinder.readthedocs.io/en/latest/index.html).

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/GenericMappingTools/gmt-for-geodesy/main)

Alternatively, you can go to a specific tutorial page, hover over the rocket 🚀
icon on the top right, and click 'Binder'.

:::{note}
If you see an error like `toomanyrequests: You have reached your pull rate
limit`, you can try this Pangeo Binder link instead as a backup, though it
will require a [GitHub account](https://github.com/signup) to work:

[![Pangeo Binder](https://aws-uswest2-binder.pangeo.io/badge_logo.svg)](https://aws-uswest2-binder.pangeo.io/v2/gh/GenericMappingTools/gmt-for-geodesy/main)
:::

# 💻 Running the notebooks locally

If you prefer to run the 🧑‍🏫 tutorials with a local installation of GMT, then
follow along! For this UNAVCO short course, we recommend creating a virtual
conda environment and installing the required software inside.

:::{tip} For users comfortable with using `git`, feel free to ⬇️ download or
clone the repository containing the short course materials directly using
`git clone https://github.com/GenericMappingTools/gmt-for-geodesy.git`
:::

Here's the instructions to install the `gmtforgeodesy` environment:

1. Ensure that you have the
   [`conda`](https://docs.conda.io/projects/conda/en/latest/user-guide/index.html)
   package manager installed (e.g. via
   [`miniconda`](https://docs.conda.io/en/latest/miniconda.html) or
   [Anaconda](https://www.anaconda.com/products/distribution)).
   You can also use [`mamba`](https://mamba.readthedocs.io/en/latest/installation.html#fresh-install)
   which tends to be a ⚡ faster alternative.

2. Make a folder called 'gmt-for-geodesy'. This will be where you will put all the
   Jupyter notebooks and data files 🗃️ used in the short course.

3. Download a copy of the 'environment.yml' file which contains a 📄 list of
   dependencies required to run the tutorials in this short course. Get it at
   https://github.com/GenericMappingTools/gmt-for-geodesy/blob/main/environment.yml.

4. Run the following commands on the 🧑‍💻 command-line to create the virtual
   environment

    ```bash
    cd /path/to/gmt-for-geodesy
    conda env create --name gmtforgeodesy --file environment.yml
    ```

5. Once the installation is completed 🏁, launch
   [Jupyter Lab](https://jupyterlab.readthedocs.io) as follows:

    ```bash
    conda activate gmtforgeodesy
    jupyter lab
    ```

   This should open up a page in your default browser. If not, you can click
   and open the 🔗 link that says `http://localhost:8888/lab?token=...` in your
   command-line terminal and this will will take you to the Jupyter Lab page.

6. Download the Jupyter notebook(s) you want to run (e.g.
   https://www.generic-mapping-tools.org/gmt-for-geodesy/first-figure.html) using
   either the download button on the ↗️ top right (select '.ipynb') or from
   GitHub at https://github.com/GenericMappingTools/gmt-for-geodesy/tree/main/book.
   Make sure to put the *.ipynb file(s) inside of the 'gmt-for-geodesy' folder.

7. Open the Jupyter notebook in the left-pane file browser, e.g. by
   🖱️ double-clicking on `first-figure.ipynb`. You are now ready to run through
   the course materials 🎉!

```{note}
If you're intending to use GMT in another project outside of this course,
please follow the official installation instructions at
https://github.com/GenericMappingTools/gmt/blob/master/INSTALL.md
```

## Acknowledgments

The structure and much of the content in this repository are based on the [EGU22 PyGMT short course](https://github.com/GenericMappingTools/egu22pygmt).

Specific lectures in this short course are reformatted from past GMT for Geodesy short courses:

- [2021 UNAVCO GMT for Geodesy short course](https://github.com/GenericMappingTools/2021-unavco-course)
- [2020 UNAVCO GMT for Geodesy short course](https://github.com/GenericMappingTools/2020-unavco-course)
- [2019 UNAVCO GMT for Geodesy short course](https://github.com/GenericMappingTools/2019-unavco-course)
