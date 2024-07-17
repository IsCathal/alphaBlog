import React from "react"
import PropTypes from "prop-types"

  const Article = (props) => {
    return (
      <React.Fragment>
        Title: {props.title}
        Description: {props.description}
      </React.Fragment>
    )
  }


Article.propTypes = {
  title: PropTypes.string,
  description: PropTypes.string
};

export default Article
